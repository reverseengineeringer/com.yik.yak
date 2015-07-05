.class public interface abstract LIV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LIV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, LIW;

    invoke-direct {v0}, LIW;-><init>()V

    sput-object v0, LIV;->a:LIV;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method
