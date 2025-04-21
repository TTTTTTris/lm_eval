1. please modify the model name in torch.load in lm_eval/models/huggingface.py to change the model you want to evaluate (tips: it's importance to use torch.save(model) to save compression models, not torch.save(model.state_dicts())
2. importance env versions: transformers==4.41.0, lm-eval==0.4.1, evaluate==0.4.3
