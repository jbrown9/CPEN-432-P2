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
 static char digits[] = "0123456789abcdef"; 


/**
 * @brief prints a number
 *
 * @param base 8, 10, 16
 * @param num the number to print
 */
 static void printnumk(uint8_t base, uint64_t num) { 

	 /** setting up variables */
	 int i = 0;
	 int digit = 0;
	 char str[64];
	 char char_out;

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
		 for (int j = 0; j < i; j++) {
			 char_out = str[i - 1 - j];
			 uart_put_byte(char_out);
		 }
	 }
 } 

int printk(const char *fmt, ...) {
	
	/** initialize the char array for strings */
	char* str;

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
				int o = va_arg(args, int);
				//print 0 before */
				uart_put_byte('0');
				printnumk(8, o);
			}
			/** printing a signed decimal */
			else if (*fmt == 'd') {
				int d = va_arg(args, int);
				/** if negative print - and convert to the positive equivalent */
				if (d < 0) {
				    uart_put_byte('-');
					d = -d;
				}
				printnumk(10, d);
			}
			/** printing unsigned decimal */
			else if (*fmt == 'u') {
				int u = va_arg(args, int);
				printnumk(10, u);
			}
			/** printing a hex value */
			else if (*fmt == 'x') {
				int x = va_arg(args, int);
				/** print 0x before number */
				uart_put_byte('0');
				uart_put_byte('x');
				printnumk(16, x);
			}
			/** printing a character */
			else if (*fmt == 'c') {
				int c = va_arg(args, int);
				uart_put_byte(c);
			}
			/** printing a string */
			else if (*fmt == 's') {
				str = va_arg(args, char*);
				/** itterate the length of the string and print each char */
				while(*str != '\0') {
					uart_put_byte(*str);
					++str;
				}
			}
			/** printing an address */
			else if (*fmt == 'p') {
				int p = va_arg(args, int);
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
