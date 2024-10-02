-- Add migration script here
CREATE TABLE IF NOT EXISTS daily_stock_bars (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_datetime TEXT NOT NULL,
    event_unix_timestamp INTEGER NOT NULL,
    open_price REAL NOT NULL DEFAULT 0.0,
    close_price REAL NOT NULL DEFAULT 0.0,
    high_price REAL NOT NULL DEFAULT 0.0,
    low_price REAL NOT NULL DEFAULT 0.0,
    volume REAL NOT NULL DEFAULT 0.0,
    volume_weighted_price REAL DEFAULT 0.0,
    stock_symbol TEXT NOT NULL,
    timeframe TEXT NOT NULL,
    bar_trend TEXT NOT NULL,
    buy_or_sell INTEGER NOT NULL,
    next_frame_price REAL NOT NULL,
    next_frame_trend TEXT NOT NULL,
    next_frame_unix_timestamp INTEGER NOT NULL,
    next_frame_event_datetime TEXT NOT NULL,
    hundred_day_sma REAL NOT NULL,
    hundred_day_ema REAL NOT NULL,
    fifty_day_sma REAL NOT NULL,
    fifty_day_ema REAL NOT NULL,
    twenty_day_sma REAL NOT NULL,
    twenty_day_ema REAL NOT NULL,
    nine_day_ema REAL NOT NULL,
    nine_day_sma REAL NOT NULL,
    fourteen_day_rsi REAL NOT NULL,
    fifty_day_high REAL NOT NULL,
    fifty_day_low REAL NOT NULL,
    hundred_day_high REAL NOT NULL,
    hundred_day_low REAL NOT NULL,
    ten_day_high REAL NOT NULL,
    ten_day_low REAL NOT NULL
);