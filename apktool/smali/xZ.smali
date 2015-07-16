.class public interface abstract LxZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LxZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lya;

    invoke-direct {v0}, Lya;-><init>()V

    sput-object v0, LxZ;->a:LxZ;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)[Ljava/net/InetAddress;
.end method
