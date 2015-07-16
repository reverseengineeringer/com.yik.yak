.class public interface abstract LJD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, LJE;

    invoke-direct {v0}, LJE;-><init>()V

    sput-object v0, LJD;->a:LJD;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method
