/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsort.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nlaerema <nlaerema@student.42lehavre.fr>	+#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/05 10:58:17 by nlaerema          #+#    #+#             */
/*   Updated: 2023/11/23 22:15:21 by nlaerema         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

static void	ft_merge_sort(t_list **list, t_uint list_size, int (*cmp)())
{
	t_list	*mid;

	ft_lstget(*list, list_size - 1)->next = NULL;
	if (2 <= list_size)
	{
		mid = ft_lstget(*list, list_size / 2);
		ft_merge_sort(&mid, (list_size + 1) / 2, cmp);
		ft_merge_sort(list, list_size / 2, cmp);
		ft_lstsort_merge(list, mid, cmp);
	}
}

void	ft_lstsort(t_list **root, int (*cmp)())
{
	if (!ft_lstis_sort(*root, cmp))
		ft_merge_sort(root, ft_lstsize(*root), cmp);
}
