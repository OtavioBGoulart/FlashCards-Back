import pkg from "@prisma/client";

const { PrismaClient } = pkg;
// export function connectDb(): void {
//     prisma = new PrismaClient;
// }

export const prisma = new PrismaClient;

// export async function disconnectDb(): Promise<void> {
//     await prisma.$disconnect();
// }