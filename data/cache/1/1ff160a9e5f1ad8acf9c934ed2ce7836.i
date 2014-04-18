a:17:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Waiter class";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"This class lets you do a non-blocking delay (so the Arduino can continue to execute other code)";}i:2;i:30;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:125;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:438:"
typedef uint32_t clock_t;
const clock_t INFINITE = ( (clock_t)(-1) );
const clock_t SEC = 1000;

//
// waiter: returns true and resets if more than time has passed
//
class waiter {
    clock_t last;
public:
    waiter() : last(millis()) {}
    bool wait( const clock_t time ) {
        clock_t now = millis();
        if( now - last >= time ) {
            last = now;
            return true;
        }
        return false;
    };
};
";i:1;s:3:"cpp";i:2;s:8:"waiter.h";}i:2;i:134;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:134;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"For example, to flash an LED:";}i:2;i:595;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:624;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:299:"
#include <waiter.h>

const byte ledPin = 13;
const clock_t flashTime = 2 * SEC;

waiter ledFlash;
bool ledState;

void setup() {
    pinMode( ledPin, OUTPUT );
};

void loop() {
    if( ledFlash.wait( flashTime ) ) {
        ledState = !ledState;
        digitalWrite( ledPin, ledState );
    }
};
";i:1;s:3:"cpp";i:2;s:9:"flash.pde";}i:2;i:631;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:631;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"You can reset the timer with:";}i:2;i:954;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:983;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
ledFlash.wait( 0 );
";i:1;s:3:"cpp";i:2;N;}i:2;i:990;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1023;}i:16;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1023;}}