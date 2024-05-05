# nvim4py: Minimalista Configuración de Neovim para Python

Este repositorio contiene una configuración optimizada de Neovim para desarrollo en Python utilizando Lua y Packer como gestor de plugins.

## Pre-requisitos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- **Neovim (v0.8+)**: Consulta la [guía de instalación oficial](https://github.com/neovim/neovim/wiki/Installing-Neovim) para obtener Neovim en tu sistema.
- **Node.js y npm (v14.0+)**: Utilizado para gestionar servidores de lenguajes y otros plugins. Instala desde el [sitio oficial de Node.js](https://nodejs.org/).
- **Python 3**: Necesario para ciertos plugins y servidores de lenguajes para Python.

## Instalación de Pyright

Para roporcionar capacidades de edición de código a nvim, instalaremos Pyright, un servidor de lenguaje para Python. Usa el siguiente comando para instalarlo globalmente:

```bash
npm install -g pyright
```

## Clonar Configuración

Para utilizar esta configuración de Neovim, clona este repositorio en tu directorio de configuración de Neovim. Asegúrate de que la ruta `~/.config/nvim` exista o crea la carpeta si es necesario:

```bash
git clone https://github.com/treborrr/nvim4py ~/.config/nvim
cd ~/.config/nvim
rm -rf .git README.md  # Opcional: Elimina los archivos innecesarios
```

## Configuración de Neovim

Una vez clonado el repositorio, abre Neovim y ejecuta el siguiente comando para instalar y sincronizar los plugins:

```vim
:PackerSync
```

Después de ejecutar este comando, reinicia Neovim para aplicar los cambios.

## Uso

Con esta configuración, puedes comenzar a desarrollar en Python de manera eficiente con soporte de autocompletado. Si encuentras algún problema o tienes sugerencias, no dudes en abrir un issue en este repositorio.

