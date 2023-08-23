/*
  Warnings:

  - Added the required column `Comments` to the `Person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Department` to the `Person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PI1` to the `Person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PI2` to the `Person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Position` to the `Person` table without a default value. This is not possible if the table is not empty.
  - Added the required column `SchoolId` to the `Person` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Person" ADD COLUMN     "Comments" TEXT NOT NULL,
ADD COLUMN     "Department" TEXT NOT NULL,
ADD COLUMN     "IsActive" BOOLEAN NOT NULL DEFAULT true,
ADD COLUMN     "IsEmployee" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "IsPI" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "PI1" TEXT NOT NULL,
ADD COLUMN     "PI2" TEXT NOT NULL,
ADD COLUMN     "Position" TEXT NOT NULL,
ADD COLUMN     "SchoolId" TEXT NOT NULL;
