import { PrismaClient } from "@prisma/client";

export let prisma: PrismaClient;
export function connectDb(): void {
    const prisma = new PrismaClient;
}


export async function disconnectDb(): Promise<void> {
    await prisma.$disconnect();
}