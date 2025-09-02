#!/bin/bash
# Hook to play voice notification when work is complete

# Get task name from argument or use default
TASK_NAME="${1:-Task}"

# Voice notification in Korean
say -v Yuna "${TASK_NAME} 작업이 완료되었습니다"

# Alternative voices:
# say -v Samantha "${TASK_NAME} is complete"  # English
# say -v Kyoko "${TASK_NAME} が完了しました"  # Japanese

# Play sound after voice (optional)
# sleep 0.5
# afplay /System/Library/Sounds/Glass.aiff