// Top.h
#ifndef TOP_H
#define TOP_H

#include <systemc.h>


SC_MODULE(Top) {
    sc_in<bool> clk, reset, go;
    sc_in<sc_uint<4>> x_in, y_in;
    sc_out<sc_uint<4>> gcd_out;
    sc_out<sc_uint<2>> state_out;

    sc_signal<sc_uint<4>> x, y;

    enum State { IDLE, WORK, DONE };
    sc_signal<State> state;

    void fsm() {
        if (reset.read() == 1) {
            state.write(IDLE);
            gcd_out.write(0);
        } else {
            switch(state.read()) {
                case IDLE:
                    if (go.read() == 1) {
                        x.write(x_in.read());
                        y.write(y_in.read());

                        // --- Fix ở đây: check nếu x hoặc y = 0 ---
                        if (x_in.read() == 0) {
                            gcd_out.write(y_in.read());
                            state.write(DONE);
                        } else if (y_in.read() == 0) {
                            gcd_out.write(x_in.read());
                            state.write(DONE);
                        } else {
                            state.write(WORK);
                        }
                    }
                    break;

                case WORK:
                    if (x.read() > y.read()) {
                        x.write(x.read() - y.read());
                    } else if (y.read() > x.read()) {
                        y.write(y.read() - x.read());
                    } else {  // x == y
                        gcd_out.write(x.read());
                        state.write(DONE);
                    }
                    break;

                case DONE:
                    // Stay here until reset
                    break;
            }
        }
        state_out.write(state.read());
    }

    SC_CTOR(Top) {
        SC_METHOD(fsm);
        sensitive << clk.pos();
    }
};

#endif // TOP_H

