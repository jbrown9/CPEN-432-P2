/**
 * @file printk.c
 *
 * @brief printf() implementation for KERNEL using UART
 *
 * @date   submission_date
 * @author your_name <email>
 */

#include <kstdint.h>
#include <kstdarg.h>

#include <uart.h>


/**
 * allows for numbers with 64 digits/letters
 */
 #define MAXBUF (sizeof(uint64_t)) 

/**
 * static array of digits for use in printnum(s)
 */
 static int8_t digits[] = "0123456789abcdef"; 


/**
 * @brief prints a number
 *
 * @param base 8, 10, 16
 * @param num the number to print
 */
 static void printnumk(uint8_t base, uint64_t num) { 

	 /** setting up variables */
	 int32_t i = 0;
	 int32_t digit = 0;
	 int8_t str[64];
	 int8_t char_out;

	 /** if the number is 0, print 0 */
	 if (num == 0) {
		 uart_put_byte('0');
	 }
	 /** otherwise */
	 else {
		 /** convert the number to the required base and store to the array str */
		 while (num > 0) {
			 digit = num % base;
			 str[i] = digits[digit];
			 num = num / base;
			 i++;
		 }

		 /** send the bytes from the inverted str array to the uart_put_byte function */
		 for (int32_t j = 0; j < i; j++) {
			 char_out = str[i - 1 - j];
			 uart_put_byte(char_out);
		 }
	 }
 } 

int32_t printk(const int8_t*fmt, ...) {
	
	/** initialize the char array for strings */
	int8_t* str;

	/** initialize va_arg */
	va_list args;
	va_start(args, fmt);

	/** while the message has not been fully printed */
	while (*fmt != '\0') {

		/** if % symbol is read */
		if (*fmt == '%') {
			++fmt;

			/** if printing an octal number */
			if (*fmt == 'o') {
				int32_t o = va_arg(args, int32_t);
				//print 0 before */
				uart_put_byte('0');
				printnumk(8, o);
			}
			/** printing a signed decimal */
			else if (*fmt == 'd') {
				int32_t d = va_arg(args, int32_t);
				/** if negative print - and convert to the positive equivalent */
				if (d < 0) {
				    uart_put_byte('-');
					d = -d;
				}
				printnumk(10, d);
			}
			/** printing unsigned decimal */
			else if (*fmt == 'u') {
				int32_t u = va_arg(args, int32_t);
				printnumk(10, u);
			}
			/** printing a hex value */
			else if (*fmt == 'x') {
				int32_t x = va_arg(args, int32_t);
				/** print 0x before number */
				uart_put_byte('0');
				uart_put_byte('x');
				printnumk(16, x);
			}
			/** printing a character */
			else if (*fmt == 'c') {
				int32_t c = va_arg(args, int32_t);
				uart_put_byte(c);
			}
			/** printing a string */
			else if (*fmt == 's') {
				str = va_arg(args, int8_t*);
				/** itterate the length of the string and print each char */
				while(*str != '\0') {
					uart_put_byte(*str);
					++str;
				}
			}
			/** printing an address */
			else if (*fmt == 'p') {
				int32_t p = va_arg(args, int32_t);
				/** print 0x before */
				uart_put_byte('0');
				uart_put_byte('x');
				printnumk(16, p);
			}
			/** otherwise print the % symbol */
			else {
				uart_put_byte('%');
			}
		}
		/** otherwise print the value */
		else {
			uart_put_byte(*fmt);
		}
		/** increment to the next value */
		++fmt;
	}
	/** end the va_arg */
	va_end(args);

  return 0;
}
