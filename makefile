help: ## Comando de ayuda 
	@echo ""
	@echo "Regla			Explicación"
	@echo "-----			-----"
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z0-9_-]+:.*##/ {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
	@echo ""

compile: ## Compila el documento en pdf-latex
	@echo "[+] Compilando..."
	pdflatex main.tex ;
	@echo "[+] Compilación Terminada"
