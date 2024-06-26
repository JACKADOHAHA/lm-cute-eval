export CUDA_VISIBLE_DEVICES=1,3
export TOKENIZERS_PARALLELISM=false

# model_path=/data1/dcy/projects/fine-tune/fine-tune-yyz/train/output/5-16_11:21_llama2_13b/ckpt/llama2_13b_8000
# model_path=/data1/dcy/projects/fine-tune/fine-tune-yyz/train/output/5-1_00:12_Meta-Llama-3-8B-Instruct/ckpt/Meta-Llama-3-8B-Instruct_10000
# model_path=/data1/dcy/downloads/model/meta-llama/Meta-Llama-3-8B-Instruct
# model_path=/data1/dcy/downloads/model/meta-llama/Meta-Llama-3-70B-Instruct
# model_path=/data1/dcy/downloads/model/meta-llama/Meta-Llama-3-8B
# model_path=/data1/yyz/downloads/models/Xwin-LM/Xwin-Math-7B-V1.0
model_path=/data1/yyz/downloads/models/NousResearch/Llama-2-13b-hf
model_path=/data1/dcy/projects/fine-tune/fine-tune-yyz/train/output/5-25_08:01_llama3_shuffle/ckpt/llama3_shuffle_1000
model_path=/data1/dcy/projects/fine-tune/fine-tune-yyz/train/output/5-25_13:20_llama3_shuffle/ckpt/llama3_shuffle_8000
# model_path=/data1/dcy/projects/fine-tune/fine-tune-yyz/train/output/5-21_00:39_llama3_shuffle/ckpt/llama3_shuffle_6000
model_path=/data1/dcy/projects/fine-tune/fine-tune-yyz/train/output/5-29_17:20_llama3_shuffle/ckpt/llama3_shuffle_12000
python main.py \
    --model_path $model_path \
    --model_type llama3 \
    --tasks all\
    --save_name llama3_refine_gen_all \
    --round 2 \
    --save_infer_results \
    --config_path config.json

