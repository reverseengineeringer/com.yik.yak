.class public interface abstract LxP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LxP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, LxQ;

    invoke-direct {v0}, LxQ;-><init>()V

    sput-object v0, LxP;->a:LxP;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)[Ljava/net/InetAddress;
.end method
