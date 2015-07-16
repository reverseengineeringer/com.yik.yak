.class LKi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:LKg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, LKg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LKg;-><init>(LKh;)V

    sput-object v0, LKi;->a:LKg;

    return-void
.end method

.method static synthetic a()LKg;
    .locals 1

    .prologue
    .line 29
    sget-object v0, LKi;->a:LKg;

    return-object v0
.end method
