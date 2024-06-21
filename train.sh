# train
python3 -m paddle.distributed.launch --log_dir=./debug/ --gpus '0,1,2,3,4,5,6'  tools/train.py -c configs/rec/rec_multi_language_lite_train.yml 
#infer
python3 tools/infer_rec.py -c configs/rec/rec_multi_language_lite_train.yml -o Global.pretrained_model={path/to/weights}/best_accuracy Global.load_static_weights=false Global.infer_img={image path}
