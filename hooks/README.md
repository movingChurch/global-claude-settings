# Claude Code Hooks

## Available Hooks

### complete.sh
Plays a voice notification when work is complete.

## Usage

Run with task name:
```bash
./complete.sh "Refactoring"
# Says: "Refactoring 작업이 완료되었습니다"
```

Or without task name:
```bash
./complete.sh
# Says: "Task 작업이 완료되었습니다"
```

## Sound Options

The hook uses macOS system sounds. You can change the sound by editing `complete.sh`:

- `Glass.aiff` (default)
- `Ping.aiff`
- `Hero.aiff`
- `Funk.aiff`
- `Pop.aiff`
- `Submarine.aiff`

## Alternative Notifications

- Voice: Uncomment the `say` command for voice notifications
- Terminal bell: Uncomment the `echo -e "\a"` for a simple beep