.class public final LiF;
.super LhE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LhE",
        "<",
        "Lix;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:LiF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LiF;

    invoke-direct {v0}, LiF;-><init>()V

    sput-object v0, LiF;->a:LiF;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, LhE;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/view/View;
    .locals 1

    sget-object v0, LiF;->a:LiF;

    invoke-direct {v0, p0, p1, p2}, LiF;->b(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;II)Landroid/view/View;
    .locals 4

    :try_start_0
    invoke-static {p1}, LhC;->a(Ljava/lang/Object;)Lhz;

    move-result-object v1

    invoke-virtual {p0, p1}, LiF;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lix;

    invoke-interface {v0, v1, p2, p3}, Lix;->a(Lhz;II)Lhz;

    move-result-object v0

    invoke-static {v0}, LhC;->a(Lhz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LhF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get button with size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LhF;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LiF;->b(Landroid/os/IBinder;)Lix;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/IBinder;)Lix;
    .locals 1

    invoke-static {p1}, Liy;->a(Landroid/os/IBinder;)Lix;

    move-result-object v0

    return-object v0
.end method
