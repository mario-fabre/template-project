from pydantic import BaseSettings


class Settings(BaseSettings):
    ENV: str = "development"
    DEBUG: bool = True
    API_KEY: str


settings = Settings()
