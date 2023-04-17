@echo off
echo Ingesting data from directory: %1
python autogpt\data_ingestion.py --dir %1 --init --overlap 200 --max_length 1000
echo Data ingestion complete. Running run_gpt3only.bat...
call run_gpt3only.bat
