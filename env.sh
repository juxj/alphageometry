# Copyright 2023 DeepMind Technologies Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

# !/bin/bash
set -e
set -x

pyenv local 3.10.9
pip install virtualenv
virtualenv -p python3 .
source ./bin/activate

pip install --require-hashes -r requirements.txt

#gdown --folder https://bit.ly/alphageometry
gdown --folder https://drive.google.com/drive/u/0/folders/1ZLaZ2ajtOcILDWa5ePPLX1bmaf_BNRZV
DATA=ag_ckpt_vocab

MELIAD_PATH=meliad_lib/meliad
mkdir -p $MELIAD_PATH
git clone https://github.com/google-research/meliad $MELIAD_PATH
export PYTHONPATH=$PYTHONPATH:$MELIAD_PATH
