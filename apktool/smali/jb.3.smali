.class public Ljb;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljw",
            "<",
            "Ljn;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Ljc;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljw",
            "<",
            "Ljn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljb;->a:Landroid/content/Context;

    iput-object p2, p0, Ljb;->b:Ljava/lang/String;

    iput-object p4, p0, Ljb;->c:Ljw;

    const/4 v0, 0x0

    iput-object v0, p0, Ljb;->e:Ljc;

    iput-object p3, p0, Ljb;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljw;)Ljb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljw",
            "<",
            "Ljn;",
            ">;)",
            "Ljb;"
        }
    .end annotation

    new-instance v0, Ljb;

    invoke-direct {v0, p0, p1, p2, p3}, Ljb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljw;)V

    return-object v0
.end method
