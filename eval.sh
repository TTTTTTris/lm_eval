
export CUDA_VISIBLE_DEVICES=1
export HF_HOME='/raid0-data/yifan'
python -m lm_eval \
   --model hf \
   --model_args pretrained=meta-llama/Llama-2-7b-hf,parallelize=True \
   --tasks mrpc,hellaswag,arc_easy,arc_challenge,winogrande,boolq,rte,piqa,mathqa,commonsense_qa,mmlu \
   --wandb_args project=lm-eval-harness-integration \
   --output_path /raid0-data/yifan/eval_results \
   --batch_size 8

# piqa,mathqa,commonsense_qa,mmlu
# wic,mrpc,hellaswag,arc_easy,arc_challenge,winogrande,boolq,rte,
# python -m lm_eval \
#    --model hf \k
#    --model_args pretrained=huggyllama/llama-7b \
#    --tasks hellaswag \
#    --device cuda:7 \
#    --batch_size 8