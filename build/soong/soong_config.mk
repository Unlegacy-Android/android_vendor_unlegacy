unlegacy_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '    "Needs_platform_textrels": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXTRELS)),true,false),'; \
	echo '') > $(SOONG_VARIABLES_TMP)
