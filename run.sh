python run_speech_recognition_seq2seq_streaming.py \
	--model_name_or_path="openai/whisper-small" \
	--dataset_name="mozilla-foundation/common_voice_11_0" \
	--dataset_config_name="be" \
	--language="be" \
	--train_split_name="train" \
	--eval_split_name="validation" \
	--model_index_name="Whisper Small Belarusian" \
    \
	--max_steps="5000" \
	--output_dir="./" \
	--per_device_train_batch_size="64" \
	--per_device_eval_batch_size="32" \
	--logging_steps="25" \
	--learning_rate="1e-4" \
	--warmup_steps="500" \
	--evaluation_strategy="steps" \
	--eval_steps="1000" \
	--save_strategy="steps" \
	--save_steps="1000" \
	--gradient_checkpointing \
	--fp16 \
    \
	--generation_max_length="225" \
	--max_duration_in_seconds="30" \
	--text_column_name="sentence" \
	--freeze_feature_encoder="False" \
	--report_to="tensorboard" \
	--metric_for_best_model="wer" \
	--greater_is_better="False" \
	--load_best_model_at_end \
    \
	--do_train \
	--do_eval \
	--predict_with_generate \
	--do_normalize_eval \
	--streaming \
	--use_auth_token \
	--push_to_hub
