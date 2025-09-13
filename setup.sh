if [ ! -f .env ]; then
    echo ".env_app file not found!"
    exit 1
fi

flutter clean
flutter pub get