# Crossy Road Reinforcement Learning

| Name          | Email                     |
| :-----------: | :-----------------------: |
| Neel Shah     | neelshah@terpmail.umd.edu |
| Anish Bagri   | aabagri@terpmail.umd.edu  |
| Nathan Sankar | nsankar@terpmail.umd.edu  |
| Akul Gokaram  | agokaram@terpmail.umd.edu |
| Aditya Sharda | asharda@terpmail.umd.edu  |

# Setup

## Python + uv

0. Ensure that [Python](https://www.python.org/) and [uv](https://github.com/astral-sh/uv) are set up on your machine.

1. Clone this repository.

   ```shell
   gh repo clone neelshah400/Crossy-Road-Reinforcement-Learning
   ```

2. Create a virtual environment.

   ```shell
   make create-venv
   ```

3. Activate the virtual environment.

   ```shell
   source .venv/bin/activate
   ```

4. Sync the virtual environment with the development dependencies.

   ```shell
   make sync-dev
   ```

5. Install the pre-commit hooks.

   ```shell
   make install-hooks
   ```

## Conda

0. Ensure that [Miniconda](https://docs.anaconda.com/free/miniconda/index.html) is set up on your machine.

1. Clone this repository.

   ```shell
   gh repo clone neelshah400/Crossy-Road-Reinforcement-Learning
   ```

2. Create a conda environment.

   ```shell
   make create-conda-env
   ```

3. Activate the conda environment.

   ```shell
   conda activate py311
   ```
4. Download the Atari ROMs.

   ```shell
   pip install gymnasium[accept-rom-license]
   ```

5. Install the pre-commit hooks.

   ```shell
   make install-hooks
   ```
