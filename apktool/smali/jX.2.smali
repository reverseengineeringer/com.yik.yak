.class public LjX;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static b:LjU;

.field public static c:LjV;

.field private static final d:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Ljq;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Ljq;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, LjX;->d:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, LjY;

    invoke-direct {v0}, LjY;-><init>()V

    sput-object v0, LjX;->e:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, LjX;->e:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, LjX;->d:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, LjX;->a:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Ljd;

    invoke-direct {v0}, Ljd;-><init>()V

    sput-object v0, LjX;->b:LjU;

    new-instance v0, Ljg;

    invoke-direct {v0}, Ljg;-><init>()V

    sput-object v0, LjX;->c:LjV;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/api/Api$c;
    .locals 1

    sget-object v0, LjX;->d:Lcom/google/android/gms/common/api/Api$c;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljq;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, LiB;->b(ZLjava/lang/Object;)V

    sget-object v0, LjX;->d:Lcom/google/android/gms/common/api/Api$c;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Ljq;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, LiB;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
