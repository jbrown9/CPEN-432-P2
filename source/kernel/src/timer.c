/**
 * @file   timer.c
 *
 * @brief  interrupt timers for ARM
 *
 * @date   
 * @author your_name <email>
 */
#include <timer.h>
#include <printk.h>

#define ARM_TIMER_CTRL_32BIT        1<<1
#define ARM_TIMER_CTRL_PRESCALER1   00<<2
#define ARM_TIMER_CTRL_INT_EN       1<<5
#define ARM_TIMER_CTRL_INT_DISABLE  0<<5
#define ARM_TIMER_CTRL_TIMER_EN     1<<7

void timer_start(int freq)
{
    uint32_t timer_value = (uint32_t)(250000000/freq);
    *ARM_TIMER_LOAD_REG = timer_value; 
    //*ARM_TIMER_RELOAD_REG = 1;timer_value;
    *ARM_TIMER_CTRL_REG =   ARM_TIMER_CTRL_32BIT |
                            ARM_TIMER_CTRL_PRESCALER1 |
                            ARM_TIMER_CTRL_INT_EN |
                            ARM_TIMER_CTRL_TIMER_EN;
}


void timer_stop(void)
{
    *ARM_TIMER_CTRL_REG = ARM_TIMER_CTRL_INT_DISABLE;
}


int timer_is_pending(void)
{
    return *ARM_TIMER_MASKED_REG & 0x1;
}


void timer_clear_pending(void)
{
    *ARM_TIMER_IRQ_REG = 0x00; /** write to register to clear it*/
}

int timer_value(void)
{
    return *ARM_TIMER_LOAD_REG;
}