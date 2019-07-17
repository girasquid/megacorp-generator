OUTPUT_FILENAME=megacorp-generator.zip
all: inputs
	zip $(OUTPUT_FILENAME) -j index.html inputs.js style.css
	cp -r $(OUTPUT_FILENAME) ~/Dropbox/Artifacts/
	butler push $(OUTPUT_FILENAME) lukehut/megacorp-generator:html --beeps4life
	rm -rf $(OUTPUT_FILENAME)

inputs: inputs.js

clean:
	rm -rf $(OUTPUT_FILENAME)
