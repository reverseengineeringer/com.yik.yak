.class LJA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LJy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, LJy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJy;-><init>(LJz;)V

    sput-object v0, LJA;->a:LJy;

    return-void
.end method

.method static synthetic a()LJy;
    .locals 1

    .prologue
    .line 29
    sget-object v0, LJA;->a:LJy;

    return-object v0
.end method
