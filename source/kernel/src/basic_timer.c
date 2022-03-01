/**
 * @file   basic_timer.c
 *
 * @brief  basic routine implementations for interacting with the ARM timer.
 *
 * @date   
 * @author your_name <email>
 */

#include <basic_timer.h>

void start_countdown(void) {
  *TIMER_LOAD = 0xFFFFFFFF;           /** Set timer to count down from 4294967295 (max value) */  
  *TIMER_RELOAD = 0xFFFFFFFF;         /** Set timer reload 4294967295 when it has finished initial count */
  *TIMER_CONTROL = 0x00000082;        /** bit7: 1 -> Timer enabled, bit1: 1 -> 32-bit counter */
  *TIMER_PRE_DIVIDER = 0x00000001;    /** Set pre-divider value to 1 as */
}

uint32_t timer_latch(void) {
  return *TIMER_LOAD - *TIMER_VALUE;
}
