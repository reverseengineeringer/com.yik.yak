.class public LhM;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt",
            "<",
            "Ljk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljt",
            "<",
            "Ljk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LhM;->a:Landroid/content/Context;

    iput-object p2, p0, LhM;->b:Ljt;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljt;)LhM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljt",
            "<",
            "Ljk;",
            ">;)",
            "LhM;"
        }
    .end annotation

    new-instance v0, LhM;

    invoke-direct {v0, p0, p1}, LhM;-><init>(Landroid/content/Context;Ljt;)V

    return-object v0
.end method
