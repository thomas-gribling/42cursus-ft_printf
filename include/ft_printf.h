/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tgriblin <tgriblin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/13 13:55:25 by tgriblin          #+#    #+#             */
/*   Updated: 2023/11/27 09:26:03 by tgriblin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>

int		ft_printf(const char *s, ...);
void	ft_convert(char c, va_list args, int *size);

int		ft_putchar(char c);
int		ft_putstr(char *str);
void	ft_putbase(long long n, int base_len, char *base, int *size);
void	ft_putptr(unsigned long address, int *size, int first);

#endif