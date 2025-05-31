#include "Top.h"
#include <systemc.h>
#include <iomanip>  // Để dùng setw, left
using namespace std;  // <--- THÊM DÒNG NÀY



int sc_main(int argc, char* argv[]) {
    sc_signal<bool> clk, reset, go;
    sc_signal<sc_uint<4>> x_in, y_in;
    sc_signal<sc_uint<4>> gcd_out;
    sc_signal<sc_uint<2>> state_out;

    Top top("top");
    top.clk(clk);
    top.reset(reset);
    top.go(go);
    top.x_in(x_in);
    top.y_in(y_in);
    top.gcd_out(gcd_out);
    top.state_out(state_out);

    // Khởi tạo ban đầu
    reset = 1;
    clk = 0; go = 0;
    x_in = 0; y_in = 0;
    sc_start(10, SC_NS);

    reset = 0;
    sc_start(10, SC_NS);

    // Danh sách test
    sc_uint<4> x_list[] = {7, 8, 9, 12, 0, 5, 15};
    sc_uint<4> y_list[] = {2, 3, 2, 2, 7, 5, 5};
    int num_tests = sizeof(x_list) / sizeof(x_list[0]);

    cout << "================ GCD TEST START ================\n";
    cout << left
         << setw(10) << "Time"
         << setw(8)  << "State"
         << setw(6)  << "X"
         << setw(6)  << "Y"
         << setw(6)  << "GCD" << endl;
    cout << "------------------------------------------------\n";

    for (int t = 0; t < num_tests; t++) {
        // Reset FSM trước mỗi phép tính
        reset = 1;
        sc_start(10, SC_NS);
        reset = 0;
        sc_start(10, SC_NS);

        // Load input
        x_in = x_list[t];
        y_in = y_list[t];
        go = 1;

        // Đảm bảo giữ go = 1 ít nhất 2 xung clock
        clk = 0; sc_start(5, SC_NS);
        clk = 1; sc_start(5, SC_NS);
        clk = 0; sc_start(5, SC_NS);
        clk = 1; sc_start(5, SC_NS);

        // Sau đó mới bắt đầu tính
        bool done = false;
        while (!done) {
            // Tạo xung clock
            clk = 0;
            sc_start(5, SC_NS);
            clk = 1;
            sc_start(5, SC_NS);

            // In trạng thái mỗi xung clock
            cout << left
                 << setw(10) << sc_time_stamp()
                 << setw(8)  << state_out.read()
                 << setw(6)  << x_in.read()
                 << setw(6)  << y_in.read()
                 << setw(6)  << gcd_out.read() << endl;

            // Kiểm tra nếu đã DONE
            if (state_out.read() == 2) {
                done = true;
            }
        }

        // Sau khi DONE, tắt go
        go = 0;
        sc_start(10, SC_NS); // delay nhẹ tránh xung rối

        cout << ">>> Result: GCD(" << x_list[t] << ", " << y_list[t] << ") = " << gcd_out.read() << "\n";
        cout << "------------------------------------------------\n";
    }

    cout << "================ GCD TEST END ==================\n";

    return 0;
}

