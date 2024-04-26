export PYTHONPATH=/repos/EasyContext

accelerate launch eval_needle.py \
    --model /abacus/models/Meta-Llama-3-8B  \
    --max_context_length 35000 \
    --min_context_length 5000 \
    --context_interval   5000 \
    --depth_interval 0.1 \
    --num_samples 2 \
    --rnd_number_digits 7 \
    --haystack_dir PaulGrahamEssays