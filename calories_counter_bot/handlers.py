from aiogram import Router
from aiogram.types.message import Message
from aiogram.filters.command import Command
from constans import HELP_TEXT

router = Router()


@router.message(Command("help", ignore_case=False))
async def help_handler(message: Message) -> None:
    await message.answer(HELP_TEXT)
