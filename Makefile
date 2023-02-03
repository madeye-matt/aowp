
sed_script='s/\/aowp\///g'

clean:
	find . -name "*.backup" -exec "rm" "{}" ";"


fix-base-href:
	find . -type f -and -name "*.html" -exec "sed" "--in-place=.backup" $(sed_script) "{}" ";"
	find . -type f -and -name "*.css" -exec "sed" "--in-place=.backup" $(sed_script)  "{}" ";"
	find . -type f -and -name "*.js" -exec "sed" "--in-place=.backup" $(sed_script) "{}" ";"
	find . -type f -and -name "*.json" -exec "sed" "--in-place=.backup" $(sed_script) "{}" ";"
	find . -type f -and -name "*.md" -exec "sed" "--in-place=.backup" $(sed_script) "{}" ";"
	find . -type f -and -name "*.yml" -exec "sed" "--in-place=.backup" $(sed_script) "{}" ";"

