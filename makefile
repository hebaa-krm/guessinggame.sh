# Makefile for guessinggame project

.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	@echo "# Jeu de Devinette - Projet Unix" > README.md
	@echo "" >> README.md
	@echo "**Date de génération:** $$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Nombre de lignes dans guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Description du projet" >> README.md
	@echo "Ce projet implémente un jeu de devinette en Bash où l'utilisateur doit deviner le nombre de fichiers dans le répertoire courant." >> README.md
	@echo "" >> README.md
	@echo "## Comment exécuter" >> README.md
	@echo "\`\`\`bash" >> README.md
	@echo "bash guessinggame.sh" >> README.md
	@echo "\`\`\`" >> README.md
	@echo "" >> README.md
	@echo "## Fonctionnalités" >> README.md
	@echo "- Demande à l'utilisateur de deviner le nombre de fichiers" >> README.md
	@echo "- Donne des indices (trop haut/trop bas)" >> README.md
	@echo "- Se termine uniquement quand la bonne réponse est donnée" >> README.md

clean:
	rm -f README.md
