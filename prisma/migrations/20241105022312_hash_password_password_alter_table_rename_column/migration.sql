/*
  Warnings:

  - You are about to drop the column `hash_password` on the `Users` table. All the data in the column will be lost.
  - Added the required column `password` to the `Users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Users" DROP COLUMN "hash_password",
ADD COLUMN     "password" VARCHAR(50) NOT NULL;
