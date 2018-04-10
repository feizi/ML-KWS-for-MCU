#!/bin/sh

python -u train.py \
       --train_dir='./checkpoint/basic_lstm/base9' \
       --batch_size=100 \
       --silence_percentage=10 \
       --unknown_percentage=60 \
       --wanted_words=alexa \
       --window_stride_ms=90.0 \
       --window_size_ms=30.0 \
       --save_step_interval=100 \
       --eval_step_interval=200 \
       --time_shift_ms=150.0  \
       --how_many_training_steps='5000,2000' \
       --learning_rate='0.001,0.0001' \
       --dct_coefficient_count=13 \
       --model_architecture='basic_lstm' \
       --clip_duration_ms=990 \
       --model_npy='./model_npy/basic_lstm/base9/' \
       --start_checkpoint='/home/xysun/workspace/ML-KWS-for-MCU/checkpoint/basic_lstm/base9/best/basic_lstm_9981.ckpt-5800' \
       "$@"
       #--start_checkpoint='/home/xysun/workspace/ML-KWS-for-MCU/checkpoint/base1/best/dnn_9666.ckpt-800' \
       
