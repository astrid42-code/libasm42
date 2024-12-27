NAME		=	libasm.a

SRCS		=	ft_strlen.s ft_strcpy.s ft_strcmp.s
#  ft_strdup.s ft_write.s ft_read.s

#BONUS		=	

PATH_SRCS = srcs/

OBJS		=	${addprefix ${PATH_SRCS}, ${SRCS:.s=.o}}

#OBJSBONUS	=	${BONUS:.s=.o}

CC			=	nasm
RM			=	rm -f
ASMFLAGS	=	-f elf64
# flag linux -f elf64
# flag mac -f macho64

.s.o:
			${CC} ${ASMFLAGS} $<

$(NAME):	${OBJS}
			ar rcs ${NAME} ${OBJS}
			ranlib ${NAME}

#bonus:		${NAME} ${OBJSBONUS}
#			ar rcs ${NAME} ${OBJS} ${OBJSBONUS}

all:		${NAME}

clean:
			${RM} ${OBJS} a.out
			#${OBJSBONUS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
