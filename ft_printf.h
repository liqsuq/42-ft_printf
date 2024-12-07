/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kadachi <kadachi@student.42tokyo.jp>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/16 19:33:47 by kadachi           #+#    #+#             */
/*   Updated: 2024/12/02 17:05:23 by kadachi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include "libft.h"

int		ft_printf(const char *format, ...);
int		ft_vprintf(const char *format, va_list argp);
int		print_char(int c);
int		print_str(char *str);
int		print_ptr(unsigned long ptr);
int		print_int(int n, int is_unsigned, char *base);
int		print_raw(const char *format);

#endif