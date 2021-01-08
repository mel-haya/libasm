LIBNAME = libasm.a
NASFLAGS= -fmacho64
ASMSRCS = ft_strcmp.s ft_strcpy.s ft_strlen.s ft_strdup.s ft_read.s ft_write.s
ASMOBJ = $(ASMSRCS:.s=.o)

%.o:		%.s
	nasm $(NASFLAGS) $< 
	
all:$(LIBNAME)

$(LIBNAME): $(ASMOBJ)
	ar rcs $(LIBNAME) $(ASMOBJ)

clean:
	@rm -rf $(ASMOBJ)

fclean: clean
	@rm -rf $(LIBNAME)

re: fclean all
