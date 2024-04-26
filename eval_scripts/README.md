### Setup

There is a fair bit of setup to get this all to work. The main thing is to install
```
cp accelerate_configs/abacus.yaml \
    /root/.cache/huggingface/accelerate/default_config.yaml
```
on all the machines being used and setting the right rank in this file on each machine.

There also some packages for the scripts to run:
```
do ssh mgx-0$h pip install ring_flash_attn@git+https://github.com/zhuzilin/ring-flash-attention seaborn; done
```

After that you should mostly be able to run from the repo root:
```
eval_scripts/eval_needle.sh
```
