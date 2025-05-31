#include <systemc.h>
#include "Top.h" // Đảm bảo bạn có Top.h và Top.cpp đúng

int sc_main(int argc, char* argv[]) {
    sc_signal<bool> clk, reset, go;
    sc_signal<sc_uint<4>> x_in, y_in;
    sc_signal<sc_uint<4>> gcd_out;
    sc_signal<sc_uint<2>> state_out;

    Top top("top");

    // Kết nối
    top.clk(clk);
    top.reset(reset);
    top.go(go);
    top.x_in(x_in);
    top.y_in(y_in);
    top.gcd_out(gcd_out);
    top.state_out(state_out);

    // Tạo file VCD trace
    sc_trace_file *wf = sc_create_vcd_trace_file("gcd_waveform");
    sc_trace(wf, clk, "clk");
    sc_trace(wf, reset, "reset");
    sc_trace(wf, go, "go");
    sc_trace(wf, x_in, "x_in");
    sc_trace(wf, y_in, "y_in");
    sc_trace(wf, gcd_out, "gcd_out");
    sc_trace(wf, state_out, "state_out");

    // Danh sách các cặp test (x,y)
    int test_vectors[][2] = {
        {7, 14},
        {12, 8},
        {9, 6},
        {15, 5},
        {0, 5},
        {7, 5}
    };
    int num_tests = sizeof(test_vectors) / sizeof(test_vectors[0]);

    // Bắt đầu test từng cặp
    for (int t = 0; t < num_tests; ++t) {
        cout << "\n========== Test case " << t+1 
             << ": x = " << test_vectors[t][0] 
             << ", y = " << test_vectors[t][1] 
             << " ==========\n";

        // Reset hệ thống
        reset.write(1);
        clk.write(0); sc_start(5, SC_NS);
        clk.write(1); sc_start(5, SC_NS);
        reset.write(0);
        clk.write(0); sc_start(5, SC_NS);
        clk.write(1); sc_start(5, SC_NS);

        // Set input
        x_in.write(test_vectors[t][0]);
        y_in.write(test_vectors[t][1]);

        // Gửi tín hiệu go = 1 trong 1 chu kỳ clock
        go.write(1);
        clk.write(0); sc_start(5, SC_NS);
        clk.write(1); sc_start(5, SC_NS);
        go.write(0);

        // Chạy clock liên tục đến khi state == DONE
        int cycle = 0;
        while (state_out.read() != 3) { // 3 == DONE
            clk.write(0);
            sc_start(5, SC_NS);
            clk.write(1);
            sc_start(5, SC_NS);

            cout << "Time: " << sc_time_stamp()
                 << " | State: " << state_out.read()
                 << " | GCD: " << gcd_out.read()
                 << endl;

            cycle++;
            if (cycle > 50) { // tránh bị kẹt vô hạn
                cout << "Error: Timeout!\n";
                break;
            }
        }

        // In kết quả cuối cùng
        cout << "** Result: GCD(" << test_vectors[t][0]
             << ", " << test_vectors[t][1] << ") = "
             << gcd_out.read() << "\n";
    }

    sc_close_vcd_trace_file(wf);

    return 0;
}

