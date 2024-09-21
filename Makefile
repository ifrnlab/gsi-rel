# Nome da pasta do ambiente virtual
VENV_DIR = venv

# Nome do arquivo de requisitos
REQ_FILE = requirements.txt

# Exibe informações de ajuda
help:
	@echo "Makefile para gerenciamento de ambiente virtual Python"
	@echo
	@echo "Comandos disponíveis:"
	@echo "  make venv   - Cria o ambiente virtual em '$(VENV_DIR)', ativa e instala pacotes listados em '$(REQUIREMENTS_FILE)'"
	@echo "  make clean  - Remove o ambiente virtual (Pasta '$(VENV_DIR)')"
	@echo "  make github - Publica a documentação no GitHub Pages"
	@echo "  make html   - Gera a documentação no formato HTML (Pasta 'site')"
	@echo "  make serve  - Iniciar um servidor HTTP na porta 8000"
	@echo "  make help   - Exibe esta mensagem de ajuda"
	
html: venv
	mkdocs build

serve: html
	mkdocs serve

github: html
	mkdocs gh-deploy

# Cria o ambiente virtual se a pasta 'venv' não existir
venv:
	@if [ ! -d "${VENV_DIR}" ]; then \
		echo "Criando o ambiente virtual em ${VENV_DIR}..."; \
		python3 -m venv "${VENV_DIR}"; \
		echo "Ambiente virtual criado com sucesso!"; \
		. ${VENV_DIR}/bin/activate && \
		pip install -r ${REQ_FILE}; \
	else \
		echo "Ambiente virtual já existe em ${VENV_DIR}. Nada a fazer."; \
		. ${VENV_DIR}/bin/activate; \
	fi; \

# Exclui o ambiente virtual
clean:
	@if [ -d "${VENV_DIR}" ]; then \
		echo "Removendo o ambiente virtual em ${VENV_DIR}."; \
		rm -rf "${VENV_DIR}"; \
		echo "Ambiente virtual removido com sucesso!"; \
	else \
		echo "Ambiente virtual não encontrado em ${VENV_DIR}."; \
	fi
