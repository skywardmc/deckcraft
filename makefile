update-packwiz:
	go install github.com/packwiz/packwiz@latest
	go install github.com/Merith-TK/packwiz-wrapper/cmd/pw@main
	clear
	@echo "Packwiz has been Updated"
export-quilt:
	-mkdir -p .build/quilt/
	cd versions/quilt && pw batch mr export
	-mv versions/quilt/*/*.mrpack .build/quilt
update-quilt:
	cd versions/quilt && pw batch update --all
refresh-quilt:
	cd versions/quilt && pw batch refresh
refresh:
	make refresh-quilt
update:
	make update-quilt
export:
	make export-quilt