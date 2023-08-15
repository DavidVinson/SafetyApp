-- CreateTable
CREATE TABLE "Person" (
    "id" SERIAL NOT NULL,
    "FName" TEXT NOT NULL,
    "LName" TEXT NOT NULL,
    "Email" TEXT NOT NULL,

    CONSTRAINT "Person_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Document" (
    "id" SERIAL NOT NULL,
    "PID" INTEGER NOT NULL,
    "BBPA1" BOOLEAN NOT NULL DEFAULT false,
    "DtBBPA1" TIMESTAMP(3) NOT NULL,
    "BBPA4" BOOLEAN NOT NULL DEFAULT false,
    "DtBBPA4" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Document_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Person_Email_key" ON "Person"("Email");

-- CreateIndex
CREATE UNIQUE INDEX "Document_PID_key" ON "Document"("PID");

-- AddForeignKey
ALTER TABLE "Document" ADD CONSTRAINT "Document_PID_fkey" FOREIGN KEY ("PID") REFERENCES "Person"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
