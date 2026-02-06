MODULAR_DIR = modular

help: ## Comando de ayuda 
	@echo ""
	@echo "Regla			Explicación"
	@echo "-----			-----"
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z0-9_-]+:.*##/ {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
	@echo ""

compile-main: ## Compila el documento principal en pdf-latex
	@echo "[+] Compilando..."
	pdflatex main.tex ;
	@echo "[+] Compilación Terminada"

compile-modules: ## Compila documentos modulares (Posible Mejora: Automatizar segun archivos en modular)
	@echo "[+] Compilando (Modular)"
	pdflatex -output-directory=$(MODULAR_DIR) $(MODULAR_DIR)/C.tex
	pdflatex -output-directory=$(MODULAR_DIR) $(MODULAR_DIR)/git.tex
	pdflatex -output-directory=$(MODULAR_DIR) $(MODULAR_DIR)/terminal.tex
	pdflatex -output-directory=$(MODULAR_DIR) $(MODULAR_DIR)/OOP.tex
	@echo "[+] Modulos Compilados"
