.class public Lcom/parse/ParseNotificationManager$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/parse/ParseNotificationManager;

    invoke-direct {v0}, Lcom/parse/ParseNotificationManager;-><init>()V

    sput-object v0, Lcom/parse/ParseNotificationManager$Singleton;->INSTANCE:Lcom/parse/ParseNotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/parse/ParseNotificationManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/parse/ParseNotificationManager$Singleton;->INSTANCE:Lcom/parse/ParseNotificationManager;

    return-object v0
.end method
