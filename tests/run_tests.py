import sys
import os

# Adiciona o diretório raiz do projeto ao sys.path
sys.path.append(os.path.dirname(os.path.dirname(__file__)))

from robot import run_cli

if __name__ == "__main__":

    # Executa os testes apenas se o script for executado diretamente
    result = run_cli(["-d", "../results", "." ])
    sys.exit(result)