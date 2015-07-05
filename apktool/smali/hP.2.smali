.class public LhP;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljw",
            "<",
            "Ljn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljw",
            "<",
            "Ljn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LhP;->a:Landroid/content/Context;

    iput-object p2, p0, LhP;->b:Ljw;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljw;)LhP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljw",
            "<",
            "Ljn;",
            ">;)",
            "LhP;"
        }
    .end annotation

    new-instance v0, LhP;

    invoke-direct {v0, p0, p1}, LhP;-><init>(Landroid/content/Context;Ljw;)V

    return-object v0
.end method
