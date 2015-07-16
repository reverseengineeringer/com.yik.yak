.class public LiY;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt",
            "<",
            "Ljk;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:LiZ;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljt",
            "<",
            "Ljk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LiY;->a:Landroid/content/Context;

    iput-object p2, p0, LiY;->b:Ljava/lang/String;

    iput-object p4, p0, LiY;->c:Ljt;

    const/4 v0, 0x0

    iput-object v0, p0, LiY;->e:LiZ;

    iput-object p3, p0, LiY;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljt;)LiY;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljt",
            "<",
            "Ljk;",
            ">;)",
            "LiY;"
        }
    .end annotation

    new-instance v0, LiY;

    invoke-direct {v0, p0, p1, p2, p3}, LiY;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljt;)V

    return-object v0
.end method
