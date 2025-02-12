# 参考MDK工程的xxx.BAT文件，将其转换为Makefile文件
%.o:%.c
	$(ARMCC) $(CFLAGS) $(INC) $(CMACRO) $< -o $@

%.o:%.s
	$(ARMASM) $(ASMFLAGS) $(INC) $(CMACRO) $< -o $@

all:$(OBJS)
	$(ARMLINK) $(LINKFLAGS) $(MAP) $(INFO) $^ -o $(TARGET).axf
	$(FROMELF) --bin -o $(TARGET).bin $(TARGET).axf
	$(FROMELF) --i32 -o $(TARGET).hex $(TARGET).axf
	$(FROMELF) --text -a -c -o $(TARGET).dis $(TARGET).axf
	rm $(OBJS)

# 若只是生成LIB库，只需要以下一条命令就可以了   
# $(ARMAR) $(APPNAME).lib -r $(OBJS)  

include ./common_config.mk
.PHONY:clean
clean:
	rm $(FOLDER_NAME)/*
