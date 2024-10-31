-- CreateTable
CREATE TABLE "Cards" (
    "id" SERIAL NOT NULL,
    "name" BIGINT NOT NULL,
    "user_id" INTEGER NOT NULL,
    "theme_id" INTEGER NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "Cards_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Favorites" (
    "id" SERIAL NOT NULL,
    "card_id" INTEGER NOT NULL,
    "comments" VARCHAR(200) NOT NULL,

    CONSTRAINT "Favorites_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "History" (
    "id" SERIAL NOT NULL,
    "card_id" INTEGER NOT NULL,
    "score" INTEGER NOT NULL,
    "date" BIGINT NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "History_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Questions" (
    "id" SERIAL NOT NULL,
    "card_id" INTEGER NOT NULL,
    "question" VARCHAR(500) NOT NULL,
    "answer" VARCHAR(500) NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "Questions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Theme" (
    "id" SERIAL NOT NULL,
    "theme_name" VARCHAR(30) NOT NULL,
    "subtheme_name" VARCHAR(30) NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,

    CONSTRAINT "Theme_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Users" (
    "id" SERIAL NOT NULL,
    "email" VARCHAR(40) NOT NULL,
    "name" VARCHAR(30) NOT NULL,
    "hash_password" VARCHAR(50) NOT NULL,
    "created_at" TIMESTAMPTZ(6) NOT NULL,
    "updated_at" TIMESTAMPTZ(6) NOT NULL,
    "ids" BIGINT NOT NULL,
    "id_confirmed" BOOLEAN NOT NULL,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_email_key" ON "Users"("email");

-- AddForeignKey
ALTER TABLE "Cards" ADD CONSTRAINT "Cards_fk2" FOREIGN KEY ("user_id") REFERENCES "Users"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "Cards" ADD CONSTRAINT "Cards_fk3" FOREIGN KEY ("theme_id") REFERENCES "Theme"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "Favorites" ADD CONSTRAINT "Favorites_fk1" FOREIGN KEY ("card_id") REFERENCES "Cards"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "History" ADD CONSTRAINT "History_fk1" FOREIGN KEY ("card_id") REFERENCES "Cards"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "Questions" ADD CONSTRAINT "Questions_fk1" FOREIGN KEY ("card_id") REFERENCES "Cards"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
