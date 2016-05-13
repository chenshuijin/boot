RET = bootsector

$(RET):*.s
	nasm $< -o $(RET)
rm:
	rm -f $(RET)
