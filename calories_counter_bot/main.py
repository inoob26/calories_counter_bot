from asyncio import run
import logging
import sys

from aiogram import Bot, Dispatcher
from aiogram.enums import ParseMode


from config import TELEGRAM_BOT_TOKEN
from handlers import router

dp = Dispatcher()


async def main() -> None:
    bot = Bot(TELEGRAM_BOT_TOKEN, parse_mode=ParseMode.HTML)

    dp.include_router(router)
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    run(main())
